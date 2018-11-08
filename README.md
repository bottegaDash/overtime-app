# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- x AuditLog

## Features:
- x Approval Workflow
- SMS Sending -> link to approval or overtime input -> integrate with Heroku scheduler
- x Administrate admin dashboard
- x Block non admin and guest users
- Email summary to managers for approval
- x Needs to be documented if employee did not log overtime
- x Create audit log for each text message
- x Need to update audit log status when an overtime rejected
- x Update buttons on employees homepage so they show on mobile
- x Update buttons to include timespan
- x Update button sort order on employee homepage
- Remove unnecessary nav bar buttons for managers
- Fix admin dashboard bug
- Implement Honeybager error reporter
- Implement new relic for keeping site alive


## TODOS:
##
