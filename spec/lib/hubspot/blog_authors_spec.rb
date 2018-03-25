describe Hubspot::BlogAuthors do
  before do
    Hubspot.configure(hapikey: "demo")
  end

  describe ".list" do
    cassette "blog_authors_list"
    let(:authors) { Hubspot::BlogAuthors.list }

    it "should have a list of authors" do
      authors.count.should be(249)
    end
  end

end
