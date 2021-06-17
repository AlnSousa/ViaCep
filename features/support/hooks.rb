require "report_builder"
require "date"

at_exit do
  t = DateTime.now.strftime("%d-%m-%Y - %r")
  d = DateTime.now
  @current_date = d.to_s.tr(":","-")
  @infos = {
    "Pltaforma" => "API",
    "Data de Execução" => t,
  }

  ReportBuilder.configure do |config|
    config.input_path = "logs/report.json"
    config.report_path = "logs/" + @current_date
    config.report_types = [:html]
    config.report_title = "ViaCEP"
    config.additional_info = @infos
    config.color = "indigo"
  end
  ReportBuilder.build_report
end
