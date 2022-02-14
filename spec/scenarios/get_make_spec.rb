describe "GET / makes" do
  context "Busca de marcas com sucesso" do
    before(:all) do
      @payload = {
        "ID" => 1,
        "Name" => "Chevrolet",
      }
      @result = Make.new.get_make(@payload)
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
