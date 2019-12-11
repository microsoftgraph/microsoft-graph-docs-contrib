# Managing Phone Numbers for Bots

## Definitions

**Application** – An application that is hosted on Azure. We can refer to this as a **bot**.

**Application Instance** – This is a disabled-user object that can be assigned to a phone number that can be used by a bot. This is also known as a [resource account](https://docs.microsoft.com/en-us/microsoftteams/manage-resource-accounts). It's the only way a phone number can be assigned to a bot.

> **Note:** The terms *application instance* and *resource account* are interchangeable

![App Instance and Tenant Diagram](images/communications-app-tenant.PNG)
One application can have multiple application instances, each tenant can have multiple application instances.


## Prerequisites
#### Registering a Bot
Follow the instructions to [register a calling bot](https://microsoftgraph.github.io/microsoft-graph-comms-samples/docs/articles/calls/register-calling-bot.html). You’ll need config values such as *Bot Id*, *MicrosoftAppId* and *MicrosoftAppPassword* to use in your code.

Add these permissions to your bot. A tenant admin needs to consent to these permissions as well.

`Calls.AccessMedia.All`

`Calls.Initiate.All`

`Calls.JoinGroupCall.All`

`Calls.JoinGroupCallAsGuest.All`

See more information on the call related permissions [here](https://docs.microsoft.com/en-us/graph/permissions-reference#calls-permissions).


## Assigning a Phone Number

There are 3 steps involved in assigning a phone number to your bot.
1.	Creating an application instance
2.	Assigning a virtual user license to your application instance
3.	Assigning a phone number to the application instance (only tenant admin)

#### 1. Creating an application instance

If it hasn't been installed already, a tenant admin needs to install the [Skype for Business Online Module](https://www.microsoft.com/en-us/download/details.aspx?id=39366) for PowerShell. The tenant admin must log in using their credentials before the cmdlet can be run.

To create a new application instance, have your tenant admin run this cmdlet

`PS C:\> New-CsOnlineApplicationInstance -UserPrincipalName <user@contoso.com> -ApplicationId “<app_id>” -DisplayName "<bot_display_name>"`

Once the application instance is created, use the sync cmdlet


`PS C:\> Sync-CsOnlineApplicationInstance -ObjectId <application_instance_id>`

#### 2.	Assigning a virtual user license to your application instance

Assign a [virtual user license](https://docs.microsoft.com/en-us/microsoftteams/teams-add-on-licensing/virtual-user)to your application instance following the steps illustrated in this link.

#### 3.	Assigning a phone number to the application instance (only tenant admin)

a. Log on to Skype for Business admin center and sign in as a tenant admin <br/>
b. Navigate to Admin center > Teams and Skype > Skype legacy admin <br/>
c. Navigate to Voice > Phone numbers <br/>
d. Assign a Service phone number (+11D format) using the following cmdlet"

`PS C:\> Set-CsOnlineVoiceApplicationInstance -Identity <user@contoso.com> -TelephoneNumber <phone_number>`

## Unassigning a Phone Number

Use the following cmdlet.

`PS C:\> Set-CsOnlineVoiceApplicationInstance -Identity <user@contoso.com> -TelephoneNumber $null`

>**Note:** currently this only works with online numbers. Direct routing (DR) numbers won't work. This is a known issue that we're trying to solve.

## Updating a Phone Number

After unassigning the number, you can assign a different number to the bot.

`PS C:\> Set-CsOnlineVoiceApplicationInstance -Identity <user@contoso.com> -TelephoneNumber <new phone_number>`

## Sample

Create a bot that you can assign a phone number to. Check out our "Incident Management" bot sample [here](https://github.com/microsoftgraph/microsoft-graph-comms-samples/tree/master/Samples/BetaSamples/RemoteMediaSamples/IncidentBot). Further instructions on how to deploy a sample can be found [here](https://github.com/microsoftgraph/microsoft-graph-comms-samples/blob/master/Samples/BetaSamples/RemoteMediaSamples/README.md#deploying-the-sample).

