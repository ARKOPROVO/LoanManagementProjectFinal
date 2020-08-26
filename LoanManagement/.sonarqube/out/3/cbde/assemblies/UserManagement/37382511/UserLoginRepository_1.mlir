// Skipping function ConfirmLogin(none, none), it contains poisonous unsupported syntaxes

func @_UserManagement.Repository.Implementation.UserLoginRepository.GenerateJSONWebToken$UserManagement.Models.User$(none) -> none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :41 :8) {
^entry (%_userInfo : none):
%0 = cbde.alloca none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :41 :44)
cbde.store %_userInfo, %0 : memref<none> loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :41 :44)
br ^0

^0: // JumpBlock
// Entity from another assembly: Encoding
%1 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :43 :55) // Encoding.UTF8 (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :43 :78) // Not a variable of known type: _config
%3 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :43 :86) // "Jwt:Key" (StringLiteralExpression)
%4 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :43 :78) // _config["Jwt:Key"] (ElementAccessExpression)
%5 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :43 :55) // Encoding.UTF8.GetBytes(_config["Jwt:Key"]) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :43 :30) // new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_config["Jwt:Key"])) (ObjectCreationExpression)
%8 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :44 :53) // Not a variable of known type: securityKey
// Entity from another assembly: SecurityAlgorithms
%9 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :44 :66) // SecurityAlgorithms.HmacSha256 (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :44 :30) // new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256) (ObjectCreationExpression)
%12 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :45 :25) // new[] {                  new Claim(JwtRegisteredClaimNames.Sub, userInfo.Role),                  new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString())              } (ImplicitArrayCreationExpression)
// Entity from another assembly: JwtRegisteredClaimNames
%13 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :46 :26) // JwtRegisteredClaimNames.Sub (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :46 :55) // Not a variable of known type: userInfo
%15 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :46 :55) // userInfo.Role (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :46 :16) // new Claim(JwtRegisteredClaimNames.Sub, userInfo.Role) (ObjectCreationExpression)
// Entity from another assembly: JwtRegisteredClaimNames
%17 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :47 :26) // JwtRegisteredClaimNames.Jti (SimpleMemberAccessExpression)
// Entity from another assembly: Guid
%18 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :47 :55) // Guid.NewGuid() (InvocationExpression)
%19 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :47 :55) // Guid.NewGuid().ToString() (InvocationExpression)
%20 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :47 :16) // new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()) (ObjectCreationExpression)
%22 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :49 :45) // Not a variable of known type: _config
%23 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :49 :53) // "Jwt:Issuer" (StringLiteralExpression)
%24 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :49 :45) // _config["Jwt:Issuer"] (ElementAccessExpression)
%25 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :50 :14) // Not a variable of known type: _config
%26 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :50 :22) // "Jwt:Issuer" (StringLiteralExpression)
%27 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :50 :14) // _config["Jwt:Issuer"] (ElementAccessExpression)
%28 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :51 :14) // Not a variable of known type: claims
// Entity from another assembly: DateTime
%29 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :52 :23) // DateTime.Now (SimpleMemberAccessExpression)
%30 = constant 120 : i32 loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :52 :47)
%31 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :52 :23) // DateTime.Now.AddMinutes(120) (InvocationExpression)
%32 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :53 :34) // Not a variable of known type: credentials
%33 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :49 :24) // new JwtSecurityToken(_config["Jwt:Issuer"],                _config["Jwt:Issuer"],                claims,                expires: DateTime.Now.AddMinutes(120),                signingCredentials: credentials) (ObjectCreationExpression)
%35 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :55 :19) // new JwtSecurityTokenHandler() (ObjectCreationExpression)
%36 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :55 :60) // Not a variable of known type: token
%37 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :55 :19) // new JwtSecurityTokenHandler().WriteToken(token) (InvocationExpression)
return %37 : none loc("D:\\FinalProject\\LoanManagementProject\\UserManagement\\Repository\\Implementation\\UserLoginRepository.cs" :55 :12)

^1: // ExitBlock
cbde.unreachable

}
