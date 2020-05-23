defmodule __PROJECT_TEMPLATE_CAMEL__.MixProject do
  use Mix.Project

  @description """
  FIXME: Lorem ipsum
  """

  @version "0.1.0"

  @deps [
    # runtime dependencies
    # ----------------------------------------------------------------------
    {:dialyxir, "~> 1.0", only: :dev, runtime: false},
    {:ex_doc, "~> 0.22", only: :dev, runtime: false},
    {:version_tasks, "~> 0.11", only: :dev, runtime: false},
    {:excoveralls, "~>0.12", only: :test}
  ]

  @docs [
    main: "__PROJECT_TEMPLATE_CAMEL__",
    api_reference: false,
    extras: ["CHANGELOG.md", "README.md"],
    source_ref: "v#{@version}"
  ]

  def project do
    [
      app: :tagged,
      deps: @deps,
      description: @description,
      docs: @docs,
      elixir: "~> 1.9",
      package: package(),
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      source_url: "https://github.com/notCalle/__PROJECT_TEMPLATE_REPO__",
      start_permanent: Mix.env() == :prod,
      test_coverage: [tool: ExCoveralls],
      version: @version
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      # extra_applications: [:logger]
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      maintainers: ["Calle Englund"],
      links: %{
        "GitHub" => "https://github.com/notCalle/__PROJECT_TEMPLATE_REPO__"
      }
    ]
  end
end
