---
author: sauwat
ms.topic: include
---

For delegated scenarios, the signed-in user must have at least one of the following [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).

- AdHoc License Administrator
- Application Administrator
- Authentication Administrator
- Azure Information Protection Administrator
- Azure Information Protection Administrator
- Billing Administrator
- Cloud Application Administrator
- Compliance Data Administrator
- Customer LockBox Access Approver
- Customer LockBox Access Approver
- Desktop Analytics Administrator
- Directory Readers
- Directory Reviewer
- Directory Writers
- Dynamics 365 Administrator
- Dynamics 365 Administrator
- Global Reader
- Guest User
- Helpdesk Administrator
- Insights Administrator
- Kaizala Administrator
- License Administrator
- Mailbox Administrator
- Microsoft Managed Desktop Administrator
- Microsoft Store for Business User
- Modern Commerce Administrator
- Power BI Administrator
- Power BI Administrator
- Privileged Authentication Administrator
- Privileged Role Administrator
- Restricted Guest User
- Security Administrator
- Security Operator
- Security Reader
- Service Support Administrator
- Teams Administrator
- Teams Communications Administrator
- Teams Communications Support Engineer
- Teams Communications Support Specialist
- User
- User Administrator
- Volume Licensing Business Center User
- Volume Licensing Service Center User

Applications granted the *User.Read* permission are able to read only the **id**, **displayName**, and **verifiedDomains** properties of the organization. All other properties return with `null` values. To read all properties, use at least *Organization.Read.All*.
