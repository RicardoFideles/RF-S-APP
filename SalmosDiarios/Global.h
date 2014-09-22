//
//  Global.h
//  RfSalmosApp
//
//  Created by Ricardo jorge Fideles junior on 05/11/13.
//  Copyright (c) 2013 Ricardo jorge Fideles junior. All rights reserved.
//

//---------------------------
// PRD
//---------------------------
#define K_PRD NO

//---------------------------
// App Store
//---------------------------

#define K_APP_STORE_LINK @"http://itunes.apple.com/app/id584819461" // TODO: remover id do vairio. Usar link abaixo (id720781998)
//#define K_APP_STORE_LINK @"http://itunes.apple.com/app/id720781998"


//---------------------------
// URL
//---------------------------




//---------------------------
// GOOGLE ANALYTICS
//---------------------------
#define K_GOOGLE_ANALYTICS_PRD_ID @"UA-1531962-81"
#define K_GOOGLE_ANALYTICS_DSV_ID @"UA-1531962-82"

#define K_GOOGLE_ANALYTICS_CAPA @"/capa"
#define K_GOOGLE_ANALYTICS_CAPA_DE_EDITORIA @"/%@"
#define K_GOOGLE_ANALYTICS_CAPA_DE_FOTOGALERIAS @"/fotogalerias"
#define K_GOOGLE_ANALYTICS_MATERIA @"/%@/%@"
#define K_GOOGLE_ANALYTICS_CONFIGURACOES @"/menu-configuracoes"
#define K_GOOGLE_ANALYTICS_CONFIGURACOES_FONTE @"/menu-configuracoes/alterar-fonte"
#define K_GOOGLE_ANALYTICS_CONFIGURACOES_TERMOS_USO @"/menu-configuracoes/termos-de-uso"
#define K_GOOGLE_ANALYTICS_CONFIGURACOES_POLITICA_PRIVACIDADE @"/menu-configuracoes/politica-privacidade"

#define K_GOOGLE_ANALYTICS_CATEGORY_NAVEGACAO @"Menu navegacao"
#define K_GOOGLE_ANALYTICS_CATEGORY_CONFIGURACOES @"Menu configuracoes"
#define K_GOOGLE_ANALYTICS_CATEGORY_VIDEOS @"Videos"
#define K_GOOGLE_ANALYTICS_CATEGORY_MATERIAS @"Materias"
#define K_GOOGLE_ANALYTICS_CATEGORY_FOTOGALERIAS @"Fotogalerias"

#define K_GOOGLE_ANALYTICS_ACTION_NAVEGACAO @"Exibe menu de navegacao"
#define K_GOOGLE_ANALYTICS_ACTION_INFORMAR_PROBLEMA @"Informar problema"
#define K_GOOGLE_ANALYTICS_ACTION_COMPARTILHAR @"Compartilhar"
#define K_GOOGLE_ANALYTICS_ACTION_AVALIAR_APP @"Avaliar aplicativo"
#define K_GOOGLE_ANALYTICS_ACTION_TOCAR @"Tocar"
#define K_GOOGLE_ANALYTICS_ACTION_NAVEGACAO_LATERAL @"Navegacao lateral"
#define K_GOOGLE_ANALYTICS_ACTION_TOQUE_THUMB @"Toque em thumb"

//---------------------------
// TIME
//---------------------------
#define K_PULL_TO_REFRESH_MINIMUM_TIME_IN_SECONDS 2.0


//---------------------------
// COLOR
//---------------------------

#define K_COLOR_MENU_GRAY [UIColor colorWithRed:240/255.f green:240/255.f blue:240/255.f alpha:1.0]


#define K_COLOR_MENU_BLUE [UIColor colorWithHexString:@"#4bc1d2" alpha:1.0f]

#define K_COLOR_MENU_BLACK [UIColor colorWithHexString:@"#000000" alpha:1.0f]

#define K_COLOR_VIEW_HOME [UIColor colorWithHexString:@"#FFFFFF" alpha:1.0f]

#define K_COLOR_VIEW_MENU_BACKGROUND [UIColor colorWithHexString:@"#383d43" alpha:1.0f]

#define K_COLOR_VIEW_MENU_ITEM [UIColor colorWithHexString:@"#FFFFFF" alpha:1.0f]

#define K_COLOR_HEADER [UIColor colorWithHexString:@"#4fc1e9" alpha:1.0f]

#define AD_MOBI_ID @"ca-app-pub-3454917145399398/9876834358"




//---------------------------
// FONT SIZE
//---------------------------
#define K_FONT_SIZE_SMALL 12.0
#define K_FONT_SIZE_REGULAR 15.0
#define K_FONT_SIZE_LARGE 18.0


//---------------------------
// NSUSERDEFAULTS KEYS
//---------------------------
#define K_KEY_FONT_SIZE @"fontSize"

//---------------------------
// EMAIL
//---------------------------
#define K_ALERT_TITLE_EMAIL_NOT_CONFIGURATE @"Não há e-mail cadastrado"
#define K_ALERT_TEXT_EMAIL_NOT_CONFIGURATE @"Você precisa configurar uma conta de e-mail em ajustes » Mail, Contatos, Calendários."

//---------------------------
// CHECK SYSTEM VERSION
//---------------------------
#define SYSTEM_VERSION_EQUAL_TO(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)