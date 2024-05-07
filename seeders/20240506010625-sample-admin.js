'use strict';
let md5 = require('md5')
const now = new Date()

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.bulkInsert('admins', [
      {
      name: "admin",
      email: "admin@gmail.com",
      password: md5("123"),
      createdAt: now,
      updatedAt: now
    },
    {
      name: "admin2",
      email: "admin2@gmail.com",
      password: md5("123"),
      createdAt: now,
      updatedAt: now
    },
    {
      name: "admin3",
      email: "admin3@gmail.com",
      password: md5("123"),
      createdAt: now,
      updatedAt: now
    }
  ])
    /**
     * Add seed commands here.
     *
     * Example:
     * await queryInterface.bulkInsert('People', [{
     *   name: 'John Doe',
     *   isBetaMember: false
     * }], {});
    */
  },

  async down (queryInterface, Sequelize) {
    /**
     * Add commands to revert seed here.
     *
     * Example:
     * await queryInterface.bulkDelete('People', null, {});
     */
  }
};
