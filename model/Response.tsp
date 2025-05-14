import "@typespec/http";
import "./Error.tsp";
import "./Users.tsp";
using Http;

model HttpErrorResponse<TStatusCode extends int32, TError> {
  @statusCode _: TStatusCode;
  @body error: TError;
}

alias BadRequest = HttpErrorResponse<400, Error.BadRequestError>;
alias NotFound = HttpErrorResponse<404, Error.NotFoundError>;
alias InternalServerError = HttpErrorResponse<500, Error.InternalServerError>;

model UsersResponse {
  users: User[];
}
