def check_model_attributes attributes
  attributes.each do |attribute|
    it "has #{attribute}" do
      should respond_to attribute.to_sym
    end
  end
end