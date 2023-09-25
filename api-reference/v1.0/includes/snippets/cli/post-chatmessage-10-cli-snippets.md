---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta teams channels messages create --team-id {team-id} --channel-id {channel-id} --body '{\
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
            "content": "{\"title\":\"Announcement heading\",\"cardImageType\":\"uploadedImage\",\"cardImageDetails\":{\"uploadedImageDetail\":{\"originalImage\":{\"source\":\"../hostedContents/1/$value\",\"width\":1379,\"height\":268,\"croppedWidth\":918.0,\"croppedHeight\":178.4075416968818,\"leftMargin\":0.0,\"topMargin\":90.7962291515591,\"imageContentType\":\"image/png\"},\"croppedImage\":{\"source\":\"../hostedContents/2/$value\"}}}}",\
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