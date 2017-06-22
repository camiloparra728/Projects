import { Angular2MapsPage } from './app.po';

describe('angular2-maps App', () => {
  let page: Angular2MapsPage;

  beforeEach(() => {
    page = new Angular2MapsPage();
  });

  it('should display welcome message', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('Welcome to app!!');
  });
});
