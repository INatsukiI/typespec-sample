import "@typespec/http";
import "./Error.tsp";
using Http;

model HttpErrorResponse<TStatusCode extends int32, TError> {
  @statusCode _: TStatusCode;
  @body error: TError;
}

alias BadRequest = HttpErrorResponse<400, BadRequestError>;
alias NotFound = HttpErrorResponse<404, NotFoundError>;
alias InternalServer = HttpErrorResponse<500, InternalServerError>;
