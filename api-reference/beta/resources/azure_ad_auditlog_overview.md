# Azure AD audit log API overview

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Microsoft Azure Active Directory (Azure AD) tracks user activity and sign-on metrics and creates audit log reports that help you understand how your users access and leverage Azure AD services. Use the Microsoft Graph API for Azure AD to analyze the data underlying these reports and to create custom solutions tailored to your organization's specific needs.

## What are Azure AD activity logs?

Azure AD provides two types of activity logs:

- audit logs 
- sign-in logs

### Audit logs

The audit logs activity report provides you with access to the history of every task performed in your tenant. The audit logs report provides you with records of system activities for compliance. Amongst others, the provided data enables you to address common scenarios such as:

- Someone in my tenant got access to an admin group. Who gave them access? 

- I want to know which users are signing into a recently on-boarded app and I want to know if it's doing well.

- How passwords resets have there been within the tenant?

The audit logs reports are available for features that you've licensed.  If you have a license for a specific feature, you also have access to its audit logs.

### Sign in logs

The sign-ins activity report helps you determine who performed the tasks reported by audit log reports. The sign-ins activity report helps you answer questions like:

- What is the sign-in pattern of a user?
- How many users have signed in during the last week?
- What's the status of these sign-ins?

Sign in reports require an Azure AD Premium license.

## What can I do with audit log APIs in Microsoft Graph?

Here are popular requests for working with audit log data:

Operation | URL
:----------|:----
GET tenant user activities | [https://graph.microsoft.com/beta/auditLogs/directoryAudits](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/directoryAudits&version=beta)
GET tenant user sign-ins | [https://graph.microsoft.com/beta/auditLogs/signIns](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/signIns&version=beta)

## Next Steps

- [directoryAudit](directoryAudit.md) resource and actions.
- [signIn](signIn.md) resource and actions. 