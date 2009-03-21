//
//  IPassGenViewController.h
//  IPassGen
//
//  Created by Daniel Passos on 21/03/09.
//  Copyright Dclick 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IPassGenViewController : UIViewController {
    IBOutlet UILabel * labelSenhaGerada;
    IBOutlet UITextField * textFieldQuantidadeCaracteres;
}

- (IBAction) gerarSenha:(id)sender;

- (NSString *) nextCaracter;
- (int) gerarNumeroAleatoriamente;
- (NSString *) gerarCaracterAleatoriamente:(BOOL)maiusculo;
- (NSString *) gerarCaracterEspecial;
- (NSString *) randomChoice:(NSString *)caracteres; 

@property (nonatomic, retain) UILabel * labelSenhaGerada;
@property (nonatomic, retain) UITextField * textFieldQuantidadeCaracteres;

@end