import "@typespec/http";
import "./model/Response.tsp";

using Http;
@service(#{ title: "Sample" })
@server("https://example.com", "Server endpoint")
namespace SampleService;

@route("/users")
@tag("Users")
interface UserRoute {
  @summary("ユーザー一覧取得")
  @get
  findAll(): UsersResponse | InternalServerError;

  @summary("ユーザー取得")
  @get
  findById(@path id: string): User | NotFound | InternalServerError;

  @summary("ユーザー作成")
  @post
  create(@body user: User): Empty | NotFound | BadRequest | InternalServerError;

  @summary("ユーザー更新")
  @put
  update(@path id: string, @body user: User):
    | User
    | BadRequest
    | NotFound
    | BadRequest;

  @summary("ユーザー削除")
  @delete
  deleteById(@path id: string): Empty | NotFound | InternalServerError;
}
