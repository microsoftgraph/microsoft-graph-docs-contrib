---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

# A UPN can also be used as -UserId.
Disable-MgUserAuthenticationPhoneMethodSmsSignIn -UserId $userId -PhoneAuthenticationMethodId $phoneAuthenticationMethodId

```