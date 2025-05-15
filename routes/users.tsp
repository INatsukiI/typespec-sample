import "@typespec/http";
import "@typespec/openapi";
import "../model";

using Http;
using OpenAPI;

namespace SampleService;

@route("/users")
@tag("Users")
interface Users {
  @operationId("getUsers")
  @summary("ユーザー一覧取得")
  @get
  findAll(): UsersResponse | InternalServer;

  @operationId("getUser")
  @summary("ユーザー取得")
  @get
  findById(@path id: string): User | NotFound | InternalServer;

  @operationId("createUser")
  @summary("ユーザー作成")
  @post
  create(@body user: User): Empty | NotFound | BadRequest | InternalServer;

  @operationId("updateUser")
  @summary("ユーザー更新")
  @put
  update(@path id: string, @body user: User):
    | User
    | BadRequest
    | NotFound
    | BadRequest;

  @operationId("deleteUser")
  @summary("ユーザー削除")
  @delete
  deleteById(@path id: string): Empty | NotFound | InternalServer;
}
