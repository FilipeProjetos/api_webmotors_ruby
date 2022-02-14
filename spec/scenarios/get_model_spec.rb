describe "GET / Model" do
  context "Busca de marcas com sucesso" do
    before(:all) do
      @payload = {
        "MakeID"=>1,
        "ID"=>1,
        "Name"=>"Agile",
      }
      @result = Model.new.get_model(@payload)
      puts "response message: #{@result.message}"
    end

    it "valida status code 200" do
      expect(@result.code).to eql 200
    end

    it "valida contrato" do
      expect(@result.parsed_response[0]).to eql @payload
    end
  end
end