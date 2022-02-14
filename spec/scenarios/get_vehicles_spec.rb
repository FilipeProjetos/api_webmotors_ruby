describe "GET / Vehicles" do
  context "Busca de Veiculos com sucesso" do
    before(:all) do
      @payload = {
        "ID"=>1,
        "Make"=>"Honda",
        "Model"=>"City",
        "Version"=>"2.0 EXL 4X4 16V GASOLINA 4P AUTOMÁTICO",
        "Image"=>"http://desafioonline.webmotors.com.br/content/img/01.jpg",
        "KM"=>0,
        "Price"=>"59000,00",
        "YearModel"=>2018,
        "YearFab"=>2017,
        "Color"=>"Azul",
        }

      @result = Vehicles.new.get_vehicle(@payload)
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
