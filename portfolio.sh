command="Dummy"
isActive=true
underline=`tput smul`
nounderline=`tput rmul`

Main(){
    StartSession
}

StartSession(){
    PrintBanner
    PrintOpeningLine
    while $isActive;
    do
        AwaitCommand
        ExecuteCommand
    done
}

PrintBanner(){
    echo "        __I__"
    echo "    .-'\"  .  \"'-."
    echo "  .'  / . ' . \  '."
    echo " /_.-..-..-..-..-._\ .---------------------------------."
    echo "          #  _,,_   ( Aur bhai barish hogi kya aaj kya lgta h )"     
    echo "          #/``    ``\ /'  ---------------------------------'"         
    echo "          / / 6 6\ \"" 
    echo "          \/\  Y /\/       /\-/\""
    echo "          #/ ``'U`` \         /a a  \               _ "       
    echo "        , (  \   | \     =\ Y  =/-~~~~~~-,_____/ )"
    echo "        |\|\_/#  \_/       '^--'          ______/"
    echo "        \/'.  \  /'\         \           /"
    echo "         \    /=\  /         ||  |---'\  \"" 
    echo "         /____)/____)       (_(__|   ((__|"
    echo " __________.__                    .__      "
    echo " \______   \__|___.__.__ __  _____|  |__   "
    echo "  |     ___/  <   |  |  |  \/  ___/  |  \  "
    echo "  |    |   |  |\___  |  |  /\___ \|   Y  \ "
    echo "  |____|   |__|/ ____|____//____  >___|  / "
    echo "               \/               \/     \/  "
}
PrintOpeningLine(){
    echo "For the list of available commands, type help"
}

AwaitCommand(){
    read -p ">>> " command
}

ExecuteCommand(){
    case "$command" in 
        "")
            EmptyCommandExecuted
            ;;
        "whois")
            ExecuteWhoIsCommand
            ;;
        "whoami")
            ExecuteWhoAmICommand
            ;;
        "help")
            HelpCommandExecuted
            ;;
        "exit")
            ExitTerminal
            ;;
        "social")
            ExecuteSocialCommand
            ;;
        "projects")
            ExecuteProjectCommand
            ;;
        "clear")
            ExecuteClearCommand
            ;;
        *)
            CommandNotFound
            ;;
    esac
}


HelpCommandExecuted(){
    echo " whois           Who is Piyush? "
    echo " whoami          Who are you? "
    echo " social          Display Social Networks "
    echo " projects        View Coding Projects "
    echo " help            You obviously know what this does "
    echo " clear           Clear the terminal "
    echo " exit            Exit the terminal "
}

ExitTerminal(){
    isActive=false
}

ExecuteClearCommand(){
    clear
}

ExecuteWhoIsCommand(){
    echo "Hey, I'm Piyush! 👋"
    echo "I'm a Full Stack Developer who thrives at the intersection of logic and creativity—engineering seamless UIs, crafting resilient backend systems, and optimizing the digital flow of data to build applications that feel fast, intuitive, and alive."
}


ExecuteProjectCommand(){
    echo "----------------------------------------------------"
    echo "Project Name        | Chatify"
    echo "Project Description | Chatify is a full-stack realtime chat application that enables users to send and receive messages instantly, featuring typing indicators, online status, and secure authentication."
    echo "Project URL         | ${underline}https://github.com/P1YUSH4/chatify${nounderline}"
    echo "----------------------------------------------------"

    echo "Project Name        | RN - Wallet"
    echo "Project Description | A React Native wallet app to track income, expenses, and manage finances with auth, real-time updates, and a clean UI."
    echo "Project URL         | ${underline}https://github.com/P1YUSH4/react-native-wallet${nounderline}"
    echo "----------------------------------------------------"

    echo "Project Name        | DentWise AI"
    echo "Project Description | A modern dental appointment system with authentication, booking flow, admin dashboard, AI voice agent, and subscription payments."
    echo "Project URL         | ${underline}https://github.com/P1YUSH4/dentwise${nounderline}"
    echo "----------------------------------------------------"
}


ExecuteWhoAmICommand(){
    echo "Knock Knock! Who are you? This paradox! We never know who we are, but, we constantly keep finding ourselves."
}

ExecuteSocialCommand(){
    echo " linkedin        ${underline}linkedin/piyush-satpathy${nounderline}"
    echo " github          ${underline}github/P1YUSH4${nounderline}"
}

EmptyCommandExecuted(){
    echo "Please enter a command. For a list of commands, type 'help'"
}

CommandNotFound(){
    echo "Command '$command' not found. For a list of commands, type 'help'"
}

Main