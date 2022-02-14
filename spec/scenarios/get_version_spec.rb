describe "GET / Model" do
  context "Busca de marcas com sucesso" do
    before(:all) do
      @payload = {
        "ModelID"=>1,
        "ID"=>6,
        "Name"=>"1.5 DX 16V FLEX 4P AUTOMÁTICO",
      }
      @result = Version.new.get_version(@payload)
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
