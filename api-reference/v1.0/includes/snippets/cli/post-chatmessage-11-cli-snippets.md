---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc teams channels messages create --team-id {team-id} --channel-id {channel-id} --body '{\
    "subject": "Announcement Subheading",\
    "body": {\
        "contentType": "text",\
        "content": "<attachment id=\"d7ddbf876ae340c3a03bada395ec7da7\"></attachment>Announcement text"\
    },\
    "attachments": [\
        {\
            "id": "d7ddbf876ae340c3a03bada395ec7da7",\
            "contentType": "application/vnd.microsoft.teams.messaging-announcementBanner",\
            "contentUrl": null,\
            "content": "{\"title\":\"\",\"cardImageType\":\"uploadedImage\",\"cardImageDetails\":{\"uploadedImageDetail\":{\"originalImage\":{\"source\":\"../hostedContents/2/$value\",\"imageContentType\":\"image/jpg\"},\"croppedImage\":{\"source\":\"../hostedContents/1/$value\"}}}}",\
            "name": null,\
            "thumbnailUrl": null\
        }\
    ],\
    "hostedContents": [\
        {\
            "@microsoft.graph.temporaryId": "1",\
            "contentBytes": "iVBORw0KGgoAAAANSUhEUgAABWMAAAEMCAYAAAChuaTsAAAAAXNSR0IArs4",\
            "contentType": "image/png"\
        },\
        {\
            "@microsoft.graph.temporaryId": "2",\
            "contentBytes": "iVBORw0KGgoAAAANSUhEUgAAA5YAAAB4CAYAAACJrW0RAAAAAXNSR0IArs4",\
            "contentType": "image/png"\
        }\
    ]\
}\
'

```