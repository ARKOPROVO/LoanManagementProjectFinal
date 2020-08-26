// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_UserManagement.Migrations.UserRelated.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Migrations\\20200822135235_UserRelated.cs" :23 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Migrations\\20200822135235_UserRelated.cs" :23 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Migrations\\20200822135235_UserRelated.cs" :23 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Migrations\\20200822135235_UserRelated.cs" :25 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Migrations\\20200822135235_UserRelated.cs" :26 :22) // "Users" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Migrations\\20200822135235_UserRelated.cs" :25 :12) // migrationBuilder.DropTable(                  name: "Users") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
