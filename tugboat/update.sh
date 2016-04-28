#!/bin/bash
cat << 'EOF'
                       .-`
                     -hMMs
                    hMMMo`
                    yMMMd-     ..
                     .yMMo   -yNNs
                       ``  -yNMMh- .ymd+`
                          yNMMh:`  :NMMMm+`
                          yhh:`     .sMMMMm.
                                    -hMMMMm.      ````
                                   -NMMMNs.      -::::----...`
                                   .hdho.        ---:::::::::::--.``
                                     `              ``````..--::::::-.`
                          ``      `..........                 ``.--::::-.`
                        `-::-`    `:::::::::-`                     `.-::::-`
                      .-::::.      .::::::::                          `.::::-.
                    .-:::-``       .::::::::                            `.-:::-.
                  `-:::-.          .::::::::                               .-:::-`
                 .::::.            .::::::::                                 .::::.
                -:::-`             .::::::::                                  `-:::.
               -:::-               .::::::::...........................`        -:::-
              -:::.                .::::::::::::::::::::::::::::::::::::`        .:::-
             -:::.                 .::::::::/++++++++++++++++++++++:::.`          .:::-
            .:::-                  .::::::::/++++////+++++////+++++:::.            -:::.
           `:::-                   .::::::::/+++/:::::+++::::::::--:::.             ::::
           .:::.                   .::::::::-----:::::`` -:::::`  `:::.             .:::.
           :::-                    .::::::::.    `..`     `..`  `.-:::-.```.....`    -:::
          `:::.                    .::::::::.       ````....----:::::::::::::::::-   .:::`
          .:::.                  `.::::::::::---::::::::::::::::::::/::::::-..-:::   .:::.
          .:::`    `...------:::::::::::::::::::::----....```-::::/++++:::::  .:::   `:::.
          .:::    -::::::::::::-::::::++++:::::`           ``:::::/+++/:::::  .:::    :::.
          .:::`   :::-..````    -::::/++++::::::-........--:::::::::::::::::---:::   `:::.
          `:::.   -:::..``````..:::::::/::::::::::::::::::::--+/::::::::://:::::::   .:::`
          `:::-   .:::::::::::::::/:::::::::///``....-...``   ./++//////++-``-:::.   -:::`
           -:::.``.::::-------..``/++//////++:`                 .::////:.`  `::::.``.:::-
           `:::::::::::-           .-/////:-`                               -:::::::::::`
            `.......-:::-` `````....-------------....````````            ``.:::-.......`
                     .::::-::::::::::::::::::::::::::::::::::------------:::::.
                      `-:::----...`````````````````....---------::::::-------.
                        ```` `````....------------....``````````````````````
                          ---:::::::::::::::::::::::::::::::::--------::::::`
                         `::::---.......````````........----::::::::::::----`
                          ```
            ````````````````  ````   ``````   ````````     ``````    ```````  ```````````
            .::::::::::..:::  .::: `-:::::::. .:::::::-. `-:::::::` .:::::::-`:::::::::::`
            -::::::::::-.:::  .::: -:::/:::::`.::::::::: -:::/::::: :::::/:::./::::::::::`
                -:::    .:::  .::: -::- `://: .:::``:::: -::-  -:::`:::- `:::.   .:::`
                .:::    .:::  .::: -::-.:::::`.::::::::: -::-  -:::`::::--:::.   .:::`
                .:::    .:::` -::: -:::.-::::`.:::::/:::.-::-  -:::`:::::::::.   .:::`
                .:::    -::::::::/ :::::::::: .:::--::::.:::::::::: ::::-::::.   .:::`
                -///     :///////.  ://////:` -////////:  ://////:` ///-  ///-   .///`
                           ````       ````                  ````
EOF

# Make sure previews work when tugboat_url is set to subpath
if [ "$TUGBOAT_URL" == "http://$TUGBOAT_DOMAIN/$TUGBOAT_TAG-$TUGBOAT_TOKEN" ] || [ "$TUGBOAT_URL" == "https://$TUGBOAT_DOMAIN/$TUGBOAT_TAG-$TUGBOAT_TOKEN" ]; then
    ln -s /var/lib/tugboat/docroot /var/www/html/$TUGBOAT_TAG-$TUGBOAT_TOKEN
fi
