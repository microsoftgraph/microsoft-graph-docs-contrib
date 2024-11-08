---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const shift = {
    "schedulingGroupId": "TAG_4ab7d329-1f7e-4eaf-ba93-63f1ff3f3c4a",
    "userId": "aa162a04-bec6-4b81-ba99-96caa7b2b24d",
    "draftShift": {
        "displayName": null,
        "startDateTime": "2024-10-10T19:00:00Z",
        "endDateTime": "2024-10-10T20:00:00Z",
        "theme": "blue",
        "notes": null,
        "activities": []
    },
    "sharedShift": {
        "displayName": null,
        "startDateTime": "2024-10-10T19:00:00Z",
        "endDateTime": "2024-10-10T20:00:00Z",
        "theme": "blue",
        "notes": null,
        "activities": []
    },
    "isStagedForDeletion": false
};

await client.api('/teams/48ba9e52-8d25-41c7-bbe7-5ee6346eec0d/schedule/shifts')
	.post(shift);

```