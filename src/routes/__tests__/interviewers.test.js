const request = require("supertest");
const generateApplication = require("../../application");

describe("Interviewers", () => {
  let app;

  beforeAll(() => {
    app = generateApplication("test");
  });

  afterEach(async () => {
    await request(app).post("/api/debug/reset");
  });

  afterAll(async () => {
    await app.close();
  });

  test("GET /api/interviewers", async () => {
    await request(app)
      .get("/api/interviewers")
      .expect(200, {
        "1": {
          id: 1,
          name: "Sonia",
          avatar: "https://i.imgur.com/twYrpay.jpg"
        },
        "2": {
          id: 2,
          name: "Anshi",
          avatar: "https://i.imgur.com/twYrpay.jpg"
        }
      });
  });
});
