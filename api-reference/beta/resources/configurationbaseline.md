---
title: "configurationBaseline resource type"
description: "**The baseline is a complex object containing the details of at least one resource and at least one property associated to the resource.**"
author: "swatya"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# configurationBaseline resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**The baseline is a complex object containing the details of at least one resource and at least one property associated to the resource that the admin wants to monitor via the configurationMonitor object.**

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/configurationbaseline-get.md)|[configurationBaseline](../resources/configurationbaseline.md)|Read the properties and relationships of a configurationBaseline object which is attached to a specific monitor.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**User friendly description of the baseline given by the user. Optional.**|
|displayName|String|**User friendly name given by the user to the baseline. Required.**|
|parameters|[baselineParameter](../resources/baselineparameter.md) collection|**Collection of parameters attached to the baseline. Optional.**|
|resources|[baselineResource](../resources/baselineresource.md) collection|**Collection of resources and its properties added to the baseline. At least one property of one resource must be present in the baseline.**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.configurationBaseline",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationBaseline",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "parameters": [
    {
      "@odata.type": "microsoft.graph.baselineParameter"
    }
  ],
  "resources": [
    {
      "@odata.type": "microsoft.graph.baselineResource"
    }
  ]
}
```

**Example 1**: The following is a sample configurationBaseline.

## Sample JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.configurationBaseline",
  "openType": false
}
-->
``` json
{
"baseline": {
    "displayName": "Demo Baseline",
    "description": "This is a baseline with SharedMailbox, AcceptedDomain and MailContact",
    "resources": [
            {
                "displayName": "TestSharedMailbox Resource",
                "resourceType": "microsoft.exchange.sharedmailbox",
                "properties": {
                    "DisplayName": "TestSharedMailbox",
                    "Alias": "testSharedMailbox",
                    "Identity": "TestSharedMailbox",
                    "Ensure": "Present",
                    "PrimarySmtpAddress": "testSharedMailbox@contoso.onmicrosoft.com",
                    "EmailAddresses": [
                        "abc@contoso.onmicrosoft.com"
                    ]
                }
            },
            {
                "displayName": "Accepted Domain",
                "resourceType": "microsoft.exchange.accepteddomain",
                "properties": {
                    "Identity": "contoso.onmicrosoft.com",
                    "DomainType": "InternalRelay",
                    "Ensure": "Present"
                }
            },
            {
                "displayName": "Mail Contact Resource",
                "resourceType": "microsoft.exchange.mailcontact",
                "properties": {
                    "Name": "Chris",
                    "DisplayName": "Chris",
                    "ExternalEmailAddress": "SMTP:chris@ach.com",
                    "Alias": "Chrisa",
                    "Ensure": "Present"
                }
            }
        ]
    }
}
```