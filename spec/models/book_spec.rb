require 'rails_helper'

RSpec.describe Book, type: :model do
  it "is not valid without a title" do
    auction = Book.new(title: nil)
    expect(auction).to_not be_valid
  end
  it "is not valid without a description" do
    auction = Book.new(description: nil)
    expect(auction).to_not be_valid
  end
  it "is not valid without a author" do
    auction = Book.new(author: nil)
    expect(auction).to_not be_valid
  end
  it "is not valid without a book_category" do
    auction = Book.new(book_category: nil)
    expect(auction).to_not be_valid
  end
end