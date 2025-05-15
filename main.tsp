import "@typespec/http";
import "./routes";

using Http;
@service(#{ title: "Sample" })
@server("https://example.com", "Server endpoint")
namespace SampleService;
