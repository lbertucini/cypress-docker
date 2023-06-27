describe('Google', () => {
  it('should display the Google homepage', () => {
    cy.visit('https://www.google.com');
    cy.contains('Google');
  });
});