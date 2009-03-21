//
//  IPassGenViewController.m
//  IPassGen
//
//  Created by Daniel Passos on 21/03/09.
//  Copyright Dclick 2009. All rights reserved.
//

#import "IPassGenViewController.h"

@implementation IPassGenViewController

@synthesize labelSenhaGerada;
@synthesize textFieldQuantidadeCaracteres;


- (IBAction) gerarSenha:(id) sender {
    
    NSString * senha = @"-> ";
    int qtdCaracteres = ((int) textFieldQuantidadeCaracteres.text);
    for (int i=1; i <= 8; i++) {
        senha = [senha stringByAppendingString:[self nextCaracter]];
    }
    labelSenhaGerada.text = senha;
    
}

- (NSString *) nextCaracter {
    
    int generated = random() % 3;
    NSString * c;
    
    switch (generated) {
        case 0:
            c = [NSString stringWithFormat:@"%d", [self gerarNumeroAleatoriamente]];
            break;
        case 1:
            c = [NSString stringWithString:[self gerarCaracterAleatoriamente:FALSE]];
            break;
        case 2:
            c = [NSString stringWithString:[self gerarCaracterEspecial]];
            break;            
    }
    
    return c;
    
}

- (int) gerarNumeroAleatoriamente {
	int generated = random() % 9;
    return generated;
}

- (NSString *) gerarCaracterAleatoriamente:(BOOL)maiusculo {
    
    NSString * CARACTERES           = @"abcdefghijklmnopqrstuvwxyz";
    NSString * CARACTERES_UPPERCASE = [CARACTERES uppercaseString];
    
    if(maiusculo) {
        return [self randomChoice:CARACTERES_UPPERCASE];
    } else {
        return [self randomChoice:CARACTERES];        
    }
    
}

- (NSString *) gerarCaracterEspecial {
    NSString * CARACTERES_ESPECIAIS =  @"@#$%&*";
    return [self randomChoice:CARACTERES_ESPECIAIS];        
}

- (NSString *) randomChoice:(NSString *)caracteres {
    NSRange range;  
    range.length = 1;
    range.location = random() % [caracteres length];
    return  [caracteres substringWithRange:range];
}

/*
 // The designated initializer. Override to perform setup that is required before the view is loaded.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
 // Custom initialization
 }
 return self;
 }
 */

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
 //textFieldQuantidadeCaracteres.text= @"3";
 }
 */

/*
 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
 - (void)viewDidLoad {
 [super viewDidLoad];
 }
 */


/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
}

@end
