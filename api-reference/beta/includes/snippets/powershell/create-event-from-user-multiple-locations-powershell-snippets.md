---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	Subject = "Plan summer company picnic"
	Body = @{
		ContentType = "HTML"
		Content = "Let's kick-start this event planning!"
	}
	Start = @{
		DateTime = "2017-08-30T11:00:00"
		TimeZone = "Pacific Standard Time"
	}
	End = @{
		DateTime = "2017-08-30T12:00:00"
		TimeZone = "Pacific Standard Time"
	}
	Attendees = @(
		@{
			EmailAddress = @{
				Address = "DanaS@contoso.onmicrosoft.com"
				Name = "Dana Swope"
			}
			Type = "Required"
		}
		@{
			EmailAddress = @{
				Address = "AlexW@contoso.onmicrosoft.com"
				Name = "Alex Wilber"
			}
			Type = "Required"
		}
	)
	Location = @{
		DisplayName = "Conf Room 3; Fourth Coffee; Home Office"
		LocationType = "Default"
	}
	Locations = @(
		@{
			DisplayName = "Conf Room 3"
		}
		@{
			DisplayName = "Fourth Coffee"
			Address = @{
				Street = "4567 Main St"
				City = "Redmond"
				State = "WA"
				CountryOrRegion = "US"
				PostalCode = "32008"
			}
			Coordinates = @{
				Latitude = 47.672
				Longitude = -102.103
			}
		}
		@{
			DisplayName = "Home Office"
		}
	)
	AllowNewTimeProposals = $true
}

New-MgUserEvent -UserId $userId -BodyParameter $params

```