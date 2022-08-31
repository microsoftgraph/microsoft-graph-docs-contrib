---
title: "organizationalMessageDetail resource type"
description: "This will allow the admin to see the specific details of an organizational message that has been created for their tenant"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# organizationalMessageDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

This will allow the admin to see the specific details of an organizational message that has been created for their tenant

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List organizationalMessageDetails](../api/intune-partnerintegration-organizationalmessagedetail-list.md)|[organizationalMessageDetail](../resources/intune-partnerintegration-organizationalmessagedetail.md) collection|List properties and relationships of the [organizationalMessageDetail](../resources/intune-partnerintegration-organizationalmessagedetail.md) objects.|
|[Get organizationalMessageDetail](../api/intune-partnerintegration-organizationalmessagedetail-get.md)|[organizationalMessageDetail](../resources/intune-partnerintegration-organizationalmessagedetail.md)|Read properties and relationships of the [organizationalMessageDetail](../resources/intune-partnerintegration-organizationalmessagedetail.md) object.|
|[Create organizationalMessageDetail](../api/intune-partnerintegration-organizationalmessagedetail-create.md)|[organizationalMessageDetail](../resources/intune-partnerintegration-organizationalmessagedetail.md)|Create a new [organizationalMessageDetail](../resources/intune-partnerintegration-organizationalmessagedetail.md) object.|
|[Delete organizationalMessageDetail](../api/intune-partnerintegration-organizationalmessagedetail-delete.md)|None|Deletes a [organizationalMessageDetail](../resources/intune-partnerintegration-organizationalmessagedetail.md).|
|[Update organizationalMessageDetail](../api/intune-partnerintegration-organizationalmessagedetail-update.md)|[organizationalMessageDetail](../resources/intune-partnerintegration-organizationalmessagedetail.md)|Update the properties of a [organizationalMessageDetail](../resources/intune-partnerintegration-organizationalmessagedetail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique identifier for the organizational message|
|scenario|[organizationalMessageScenario](../resources/intune-partnerintegration-organizationalmessagescenario.md)|Indicates the scenario for the message. Possible values are: `onboarding`, `lifecycle`, `unknownFutureValue`.|
|surface|[organizationalMessageSurface](../resources/intune-partnerintegration-organizationalmessagesurface.md)|Indicates the area where content will be displayed to customers. Possible values are: `actionCenter`, `getStarted`, `softLanding`, `unknownFutureValue`.|
|status|[organizationalMessageStatus](../resources/intune-partnerintegration-organizationalmessagestatus.md)|Indicates the deployment status of the message. Possible values are: `scheduled`, `active`, `completed`, `cancelled`, `unknownFutureValue`.|
|startDateTime|DateTimeOffset|The date and time of when the message will start being displayed to clients|
|endDateTime|DateTimeOffset|The date and time of when the message will stop being displayed to clients|
|createdDateTime|DateTimeOffset|The date and time of when the message was created|
|lastModifiedDateTime|DateTimeOffset|The date and time of when the message was last modified|
|userEngagementStatistics|[organizationalMessageInsights](../resources/intune-partnerintegration-organizationalmessageinsights.md)|The statistics containing how the message was interacted with by clients. This includes the number of impressions, clicks, and dismisses from targeted clients.|
|frequency|[organizationalMessageFrequency](../resources/intune-partnerintegration-organizationalmessagefrequency.md)|The frequency at which a client will see the message. Possible values are: `weeklyOnce`, `monthlyOnce`, `monthlyTwice`, `unknownFutureValue`.|
|targeting|[organizationalMessageTargeting](../resources/intune-partnerintegration-organizationalmessagetargeting.md)|The groups of devices that will receive the message. This also contains a list of excluded groups that will not receive the message regardless of the device being part of an included group|
|content|[organizationalMessageContent](../resources/intune-partnerintegration-organizationalmessagecontent.md)|The content that will be displayed to clients for the message. This includes the text portion of the message and the displayed logo|
|theme|[organizationalMessageTheme](../resources/intune-partnerintegration-organizationalmessagetheme.md)|Indicates the theme for the experience. Possible values are: `update`, `training`, `welcomeToWindows`, `explore`, `unknownFutureValue`.|
|variant|String|Indicates the corresponding variant for the experience|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.organizationalMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organizationalMessageDetail",
  "id": "String (identifier)",
  "scenario": "String",
  "surface": "String",
  "status": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "userEngagementStatistics": {
    "@odata.type": "microsoft.graph.organizationalMessageInsights",
    "impressions": 1024,
    "clicks": 1024,
    "dismisses": 1024
  },
  "frequency": "String",
  "targeting": {
    "@odata.type": "microsoft.graph.organizationalMessageTargeting",
    "targetingType": "String",
    "includeIds": [
      "String"
    ],
    "excludeIds": [
      "String"
    ]
  },
  "content": {
    "@odata.type": "microsoft.graph.organizationalMessageContent",
    "guidedContentId": "String",
    "placementDetails": [
      {
        "@odata.type": "microsoft.graph.organizationalMessagePlacementDetail",
        "placement": "String",
        "variants": [
          {
            "@odata.type": "microsoft.graph.organizationalMessageVariant",
            "variantId": "String",
            "name": "String",
            "localizedTexts": [
              {
                "@odata.type": "microsoft.graph.organizationalMessageLocalizedText",
                "locale": "String",
                "text": {
                  "@odata.type": "microsoft.graph.organizationalMessageText",
                  "title": "String",
                  "message": "String",
                  "clickUrl": "String",
                  "buttonText": "String"
                }
              }
            ]
          }
        ]
      }
    ],
    "logoInfo": {
      "@odata.type": "microsoft.graph.organizationalMessageLogo",
      "logo": "binary",
      "contentType": "String",
      "logoCdnUrl": "String"
    }
  },
  "theme": "String",
  "variant": "String"
}
```






