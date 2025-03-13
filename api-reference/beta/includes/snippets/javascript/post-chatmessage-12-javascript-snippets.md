---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const chatMessage = {
    subject: 'Announcement Subheading',
    body: {
        contentType: 'text',
        content: '<attachment id=\"d7ddbf876ae340c3a03bada395ec7da7\"></attachment>Announcement text'
    },
    attachments: [
        {
            id: 'd7ddbf876ae340c3a03bada395ec7da7',
            contentType: 'application/vnd.microsoft.teams.messaging-announcementBanner',
            contentUrl: null,
            content: '{\"title\':\'\",\"cardImageType\':\'uploadedImage\",\"cardImageDetails\':{\'uploadedImageDetail\':{\'originalImage\':{\'source\':\'../hostedContents/2/$value\",\"imageContentType\':\'image/jpg\"},\"croppedImage\':{\'source\':\"../hostedContents/1/$value\"}}}}",
            name: null,
            thumbnailUrl: null
        }
    ],
    hostedContents: [
        {
            '@microsoft.graph.temporaryId': '1',
            contentBytes: 'iVBORw0KGgoAAAANSUhEUgAABWMAAAEMCAYAAAChuaTsAAAAAXNSR0IArs4c6QAAAARnQU1BA',
            contentType: 'image/png'
        },
        {
            '@microsoft.graph.temporaryId': '2',
            contentBytes: 'iVBORw0KGgoAAAANSUhEUgAAA5YAAAB4CAYAAACJrW0RAAAAAXNSR0IArs4c6QAAIABJREFUe',
            contentType: 'image/png'
        }
    ]
};

await client.api('/teams/5c884e2f-83f8-4cff-af8e-0177f260b9f8/channels/19:81f49626414645c99469ee65a1a7e1a4@thread.tacv2/messages')
	.version('beta')
	.post(chatMessage);

```