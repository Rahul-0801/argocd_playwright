const { test, expect } = require('@playwright/test');
 
test('my first test', async ({ page }) => {
  await page.goto('https://playwright.dev/');
  const title = await page.locator('.navbar__inner .navbar__title').textContent();
  expect(title).toBe('Playwright');
});
