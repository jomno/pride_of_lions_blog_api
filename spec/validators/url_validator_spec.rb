describe UrlValidator do

  before do
    @validator = UrlValidator.new attributes: { url: '' }
  end

  context '유효하지 않은 input 값' do
    it 'expect return false for a poorly formed URL' do
      validator = @validator.url_valid?('something.com')
      expect(validator).to be_falsey
    end

    it 'expect return false for garbage input' do
      pi = 3.14159265
      validator = @validator.url_valid?(pi)
      expect(validator).to be_falsey
    end

    it 'expect return false for URLs without an HTTP protocol' do
      validator = @validator.url_valid?('ftp://secret-file-stash.net')
      expect(validator).to be_falsey
    end
  end

  context "유효한 input 값" do
    it 'expect return true for a correctly formed HTTP URL' do
      validator = @validator.url_valid?('http://nooooooooooooooo.com')
      expect(validator).to be_truthy
    end

    it 'expect return true for a correctly formed HTTPS URL' do
      validator = @validator.url_valid?('https://google.com')
      expect(validator).to be_truthy
    end
  end

end
