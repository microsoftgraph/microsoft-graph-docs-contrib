# isGuest enum type

 **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A risky user could be either a Home user (B2E) or a Guest user (B2B, B2C). Here are all possible values for a given user.

## Members

|Value|Description|
|:---|:---|
|false|User’s identity lies inside the tenant in consideration.|
|true|User’s identity lies outside of the tenant in consideration. This user could be a B2B or a B2C user with identity in Azure AD, MSA or 3rd party identity provider.|