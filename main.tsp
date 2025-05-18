import "@typespec/http";
import "./routes";

using Http;
@service(#{ title: "Sample" })
@server("https://sample.com", "Server endpoint")
namespace SampleService;
