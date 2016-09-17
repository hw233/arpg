
translation_infos = {
	'服务器将在%u秒后关闭重启，为此带来的不便，敬请谅解。'						,
	'对不起，由于您的非法操作已被封禁IP，若有疑问可咨询在线客服。'              ,
	'对不起，由于您的非法操作已被封号，若有疑问可咨询在线客服。'                ,
	'对不起，由于您的非法操作已被踢线，若有疑问可咨询在线客服。'                ,
	'对不起，请勿使用非正常方式在矿场复活。'                                    ,
	'对不起，请勿散播不良信息影响他人正常游戏。'                                ,
	'对不起，请勿使用非正常手段进行游戏。'                                      ,
	'对不起，系统检测到您当前账号异常，请刷新后重新进入游戏即可恢复正常。'      ,
	'《天书世界》意见提交验证码：'												,
	'，感谢您的支持，祝您游戏愉快。'											,
	'个'																		,
}
function GetCharacters(pos)
	pos = pos + 1
	if(pos > 0 and pos <= #translation_infos)then
		return translation_infos[pos]
	else
		return ''
	end
end
