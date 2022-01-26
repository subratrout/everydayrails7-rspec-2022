require 'rails_helper'

describe User do
  it "is valid with a firstname, lastname and email" do
    user = Contact.new(
      firstname: "John",
      lastname: "Doe",
      email: "john.doe@gmail.com"
    )
    expect(user).to be_valid
  end
  it "is invalid without a firstname"
  it "is invalid without a lastname"
  it "is invalid without an email address"
  it "is invalid with a duplicate email address"
  it "returns contact's full name as string"


end