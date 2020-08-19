---
title: "expirationPatternType enum type"
description: "The requestor's desired expiration pattern type. "
localization_priority: Normal
doc_type: enumPageType
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
---

# expirationPatternType enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In an [Azure AD entitlement management](entitlementmanagement-root.md) [expirationPattern](expirationpattern.md), this specifies the requestor's desired expiration pattern type.

## Members

| Member | Value| Description |
|:---------------|:--------|:----------|
|notSpecified|0|No expiration schedule was specified.|
|noExpiration|1|The requestor did not wish the access to expire.|
|afterDateTime|2|Access will expire after a specified date and time.|
|afterDuration|3|Access will expire after a specified duration relative to access being granted.|

