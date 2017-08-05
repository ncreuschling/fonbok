module FixtureHelpers
  def fixtures_path
    Pathname.new File.join(File.dirname(__FILE__), 'fixtures')
  end

  def fixture_file(file_name = 'FRITZ.Box_Telefonbuch_Testdaten_29.07.17_2018.xml')
    fixtures_path.join file_name
  end
end
