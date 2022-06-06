---
author: besiler
ms.topic: include
ms.date: 05/11/2022
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041-->

### Viewing applied conditional access (CA) policies in sign-ins
The applied CA policies listed in **appliedConditionalAccessPolicies** property are only available to users and apps with roles that allow them to read [conditional access data](/graph/api/resources/appliedconditionalaccesspolicy). If a user or app has permissions to read sign-in logs but not permission to read conditional access data, the **appliedConditionalAccessPolicies** property in the response will be omitted. The following Azure AD roles grant users permissions to view conditional access data:

+ Global Administrator
+ Global Reader
+ Security Administrator
+ Security Reader
+ Conditional Access Administrator

Applications must have at least one of the following permissions to see [appliedConditionalAccessPolicy](/graph/api/resources/appliedconditionalaccesspolicy) objects in the sign-in logs: 

+ Policy.Read.All
+ Policy.ReadWrite.ConditionalAccess
+ Policy.Read.ConditionalAccess

>**Note:** Azure AD users with any permissions can read sign-in logs in which their user is the actor signing in. This feature helps users spot unexpected activity in their accounts. Users cannot read CA data from their own logs unless they have one of the CA permissions identified above.
