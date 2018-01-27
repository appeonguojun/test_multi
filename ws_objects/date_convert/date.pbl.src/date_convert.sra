$PBExportHeader$date_convert.sra
$PBExportComments$Generated Application Object
forward
global type date_convert from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type date_convert from application
string appname = "date_convert"
end type
global date_convert date_convert

on date_convert.create
appname="date_convert"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on date_convert.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;String ls_date
date ld_date

ld_date = date('2018-01-53')

messagebox("date('2018-01-53')",String(ld_date))
end event

