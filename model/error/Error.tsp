@error
model Error {
  code: string;
  message: string;
}

model BadRequestError extends Error {
  code: "BAD_REQUEST";
}

model NotFoundError extends Error {
  code: "NOT_FOUND";
}

model InternalServerError extends Error {
  code: "INTERNAL_SERVER_ERROR";
}
