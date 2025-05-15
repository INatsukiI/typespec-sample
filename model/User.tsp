model User {
  @visibility(Lifecycle.Read)
  id: string;

  name: string;

  @visibility(Lifecycle.Create, Lifecycle.Update)
  email: string;
}

model UsersResponse {
  users: User[];
}

model Empty {}
