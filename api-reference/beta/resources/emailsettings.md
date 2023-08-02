---
title: "emailSettings resource type"
description: "Defines the settings for emails sent using Lifecycle Workflows."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# emailSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the settings for emails sent from Lifecycle workflow [tasks](identitygovernance-task.md). Allows you to use a verified custom [domain](domain.md) and [organizationalBranding](organizationalbranding.md) with emails sent out via workflow tasks.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|senderDomain|String|Specifies the [domain](domain.md) that should be used when sending email notifications. This domain must be [verified](../api/domain-verify.md) in order to be used. We recommend that you use a domain that has the appropriate DNS records to facilitate email validation, like SPF, DKIM, DMARC, and MX, because this then complies with the [RFC compliance](https://www.ietf.org/rfc/rfc2142.txt) for sending and receiving email. For details, see [Learn more about Exchange Online Email Routing](/exchange/mail-flow-best-practices/mail-flow-best-practices).|
|useCompanyBranding|Boolean|Specifies if the organization’s banner logo should be included in email notifications. The banner logo will replace the Microsoft logo at the top of the email notification. If `true` the banner logo will be taken from the tenant’s [branding settings](organizationalbranding.md). This value can only be set to `true` if the [organizationalBranding](organizationalbranding.md) **bannerLogo** property is set. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.emailSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.emailSettings",
  "senderDomain": "String",
  "useCompanyBranding": "Boolean"
}
```
