
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerProgressTaskBoardTaskFormat = {
  orderHint: "A6673H Ejkl!"
};

let res = await client.api('/planner/tasks/{task-id}/progressTaskBoardFormat')
	.update({plannerProgressTaskBoardTaskFormat : plannerProgressTaskBoardTaskFormat});

```