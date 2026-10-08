---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const follow = {
  followBy: {
    user: {
      id: 'e7f439cd-2e84-4b15-a903-f6d82a7b9c21'
    }
  }
};

await client.api('/users/b3c29da7-ff83-4a92-b14e-7c91fe830b96/employeeExperience/storyline/follow')
	.version('beta')
	.post(follow);

```