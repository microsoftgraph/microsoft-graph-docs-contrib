---
title: "whoisRecord resource type"
description: "Represents a whois record of a host"
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# whoisRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents a Whois entry, which communicates a registered [host](../resources/security-host.md), the contacts for that resource, and other metadata about the registration.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get whoisRecord for a host](../api/security-host-get-whois.md)|[microsoft.graph.security.whoisRecord](../resources/security-whoisrecord.md) |Get the [microsoft.graph.security.whoisRecord](../resources/security-whoisrecord.md) object and their properties.|
|[Get whoisRecord](../api/security-whoisrecord-get.md)|[microsoft.graph.security.whoisRecord](../resources/security-whoisrecord.md)|Read the properties and relationships of a [microsoft.graph.security.whoisRecord](../resources/security-whoisrecord.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|abuse|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **abuse** contact.|
|admin|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **admin** contact.|
|billing|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **billing** contact.|
|domainStatus|String|The domain status for this whois object.|
|expirationDateTime|DateTimeOffset|The date and time that this whois record will expire with the registrar.|
|firstSeenDateTime|DateTimeOffset|The first seen date and time of this whois record.|
|id|String|The id for this Whois record object. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastSeenDateTime|DateTimeOffset|The last seen date and time of this whois record.|
|lastUpdateDateTime|DateTimeOffset|The date and time that this whois record was last updated.|
|nameservers|[microsoft.graph.security.whoisNameserver](../resources/security-whoisnameserver.md) collection|The nameservers for this whois object.|
|noc|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **noc** contact.|
|rawWhoisText|String|The raw whois details for this whois object.|
|registrant|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **registrant** contact.|
|registrar|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **registrar** contact.|
|registrationDateTime|DateTimeOffset|The date and time that this whois record was registered with a registrar.|
|technical|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **technical** contact.|
|whoisServer|String|The whois server providing the details.|
|zone|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **zone** contact.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|host|[microsoft.graph.security.host](../resources/security-host.md)|The host associated to this whois object.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.whoisRecord",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.whoisRecord",
  "id": "String (identifier)",
  "registrationDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)",
  "lastUpdateDateTime": "String (timestamp)",
  "abuse": {
    "@odata.type": "microsoft.graph.security.whoisContact"
  },
  "admin": {
    "@odata.type": "microsoft.graph.security.whoisContact"
  },
  "billing": {
    "@odata.type": "microsoft.graph.security.whoisContact"
  },
  "registrar": {
    "@odata.type": "microsoft.graph.security.whoisContact"
  },
  "registrant": {
    "@odata.type": "microsoft.graph.security.whoisContact"
  },
  "technical": {
    "@odata.type": "microsoft.graph.security.whoisContact"
  },
  "noc": {
    "@odata.type": "microsoft.graph.security.whoisContact"
  },
  "zone": {
    "@odata.type": "microsoft.graph.security.whoisContact"
  },
  "nameservers": [
    {
      "@odata.type": "microsoft.graph.security.whoisNameserver"
    }
  ],
  "whoisServer": "String",
  "domainStatus": "String",
  "rawWhoisText": "String"
}
```
