---
title: "whoisBaseRecord resource type"
description: "An abstract type that represents a whoisBaseRecord."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# whoisBaseRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents a WHOIS entry that contains information about a registered [host](../resources/security-host.md), the contacts for the registered **host**, and other metadata about the registration. This is an abstract type that can't be accessed directly. You can use the following implementation types instead:

- [whoisHistoryRecord](./security-whoishistoryrecord.md) 
- [whoisRecord](./security-whoisrecord.md) 

Inherits from [entity](../resources/entity.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|abuse|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **abuse** contact.|
|admin|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **admin** contact.|
|billing|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **billing** contact.|
|domainStatus|String|The domain status for this WHOIS object.|
|expirationDateTime|DateTimeOffset|The date and time when this WHOIS record expires with the registrar. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|firstSeenDateTime|DateTimeOffset|The first seen date and time of this WHOIS record. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|The ID for this WHOIS record object. Inherited from [entity](../resources/entity.md).|
|lastSeenDateTime|DateTimeOffset|The last seen date and time of this WHOIS record. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|lastUpdateDateTime|DateTimeOffset|The date and time when this WHOIS record was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|nameservers|[microsoft.graph.security.whoisNameserver](../resources/security-whoisnameserver.md) collection|The nameservers for this WHOIS object.|
|noc|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **noc** contact.|
|rawWhoisText|String|The raw WHOIS details for this WHOIS object.|
|registrant|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **registrant** contact.|
|registrar|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **registrar** contact.|
|registrationDateTime|DateTimeOffset|The date and time when this WHOIS record was registered with a registrar. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|technical|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **technical** contact.|
|whoisServer|String|The WHOIS server that provides the details.|
|zone|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **zone** contact.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|host|[microsoft.graph.security.host](../resources/security-host.md)|The host associated to this WHOIS object.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.whoisBaseRecord",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.whoisBaseRecord",
  "abuse": {"@odata.type": "microsoft.graph.security.whoisContact"},
  "admin": {"@odata.type": "microsoft.graph.security.whoisContact"},
  "billing": {"@odata.type": "microsoft.graph.security.whoisContact"},
  "domainStatus": "String",
  "expirationDateTime": "String (timestamp)",
  "firstSeenDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastSeenDateTime": "String (timestamp)",
  "lastUpdateDateTime": "String (timestamp)",
  "nameservers": [{"@odata.type": "microsoft.graph.security.whoisNameserver"}],
  "noc": {"@odata.type": "microsoft.graph.security.whoisContact"},
  "rawWhoisText": "String",
  "registrant": {"@odata.type": "microsoft.graph.security.whoisContact"},
  "registrar": {"@odata.type": "microsoft.graph.security.whoisContact"},
  "registrationDateTime": "String (timestamp)",
  "technical": {"@odata.type": "microsoft.graph.security.whoisContact"},
  "whoisServer": "String",
  "zone": {"@odata.type": "microsoft.graph.security.whoisContact"}
}
```
