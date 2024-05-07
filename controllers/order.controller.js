// order.controller.js
const { coffeID, order_detail, order_list, sequelize } = require('../models/index');

// CRUD Operations
exports.findAll = async (req, res) => {
  try {
    const orders = await order_list.findAll({
      include: [{
        model: order_detail,
        as: 'listCoffe',
        include: [coffe]
      }]
    });
    return res.json({
      success: true,
      data: orders,
      message: 'Order list has been retrieved along with order details'
    });
  } catch (error) {
    console.error('Error fetching orders:', error);
    return errorHandler(res, error, 'Failed to retrieve order list');
  }
};

exports.addOrder = async (req, res) => {
  const t = await sequelize.transaction();
  try {
    console.log('Data permintaan:', req.body);

    const { customer_name, order_type, order_date, order_details } = req.body;

    if (!customer_name ||!order_type ||!order_date ||!order_details ||!Array.isArray(order_details)) {
      throw new Error('Invalid input data');
    }

    const orderList = await order_list.create({
      customer_name,
      order_type,
      order_date,
    }, { transaction: t });

    console.log('Daftar pesanan:', orderList);

    for (const item of order_details) {
      const { coffeID, price, quantity } = item;
      console.log('Membuat detail pesanan:', item);

      await order_detail.create({
        orderID: orderList.orderID,
        coffeID: coffeID,
        price,
        quantity,
      }, { transaction: t });
    }

    await t.commit();

    res.status(201).json({
      data: {
        id: orderList.orderID,
        customer_name,
        order_type,
        order_date,
      },
      message: 'Pesanan berhasil dibuat',
    });
  } catch (error) {
    await t.rollback();
    console.error('Kesalahan saat menambahkan pesanan:', error);
    return errorHandler(res, error, 'Failed to create order');
  }
};

// Centralized error handling
const errorHandler = (res, error, message) => {
  console.error(message, error);
  res.status(500).json({ error: message });
};