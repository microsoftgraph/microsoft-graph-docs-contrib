---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc teamwork send-activity-notification-to-recipients post --body '{\
    "topic": {\
        "source": "entityUrl",\
        "value": "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/{teamsAppId}"\
    },\
    "activityType": "pendingFinanceApprovalRequests",\
    "previewText": {\
        "content": "Internal spending team has a pending finance approval requests"\
    },\
    "recipients": [\
    	{\
        	"@odata.type": "microsoft.graph.aadUserNotificationRecipient",\
        	"userId": "569363e2-4e49-4661-87f2-16f245c5d66a"\
    	},\
    	{\
        	"@odata.type": "microsoft.graph.aadUserNotificationRecipient",\
        	"userId": "ab88234e-0874-477c-9638-d144296ed04f"\
    	},\
    	{\
        	"@odata.type": "microsoft.graph.aadUserNotificationRecipient",\
        	"userId": "01c64f53-69aa-42c7-9b7f-9f75195d6bfc"\
    	}\
    ],\
    "templateParameters": [\
        {\
            "name": "pendingRequestCount",\
            "value": "5"\
        }\
    ] \
}\
'

```