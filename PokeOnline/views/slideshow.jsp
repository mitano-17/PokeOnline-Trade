var i = 0;
            var images = [];
            var slideTime = 10000; // 10 seconds

            images[0] = 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e2bd347b-177f-44cc-bed2-1a8302fed758/dcxw623-d049eb6e-feca-4ac3-940a-5d98befcfdc8.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2UyYmQzNDdiLTE3N2YtNDRjYy1iZWQyLTFhODMwMmZlZDc1OFwvZGN4dzYyMy1kMDQ5ZWI2ZS1mZWNhLTRhYzMtOTQwYS01ZDk4YmVmY2ZkYzgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.qgg-lzOxCa-vQ9Ai4snZojoSlVHzg_x358imNY_0Jhc';
            images[1] = 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e2bd347b-177f-44cc-bed2-1a8302fed758/dcyz4va-9b39836e-f0a5-43e9-aa4e-58fc83d989ff.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2UyYmQzNDdiLTE3N2YtNDRjYy1iZWQyLTFhODMwMmZlZDc1OFwvZGN5ejR2YS05YjM5ODM2ZS1mMGE1LTQzZTktYWE0ZS01OGZjODNkOTg5ZmYucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.ADtmabCDWXsVX4zZBjUfpSxNhPYI3mlQ7wJBFEQWNnU';
            images[2] = 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e2bd347b-177f-44cc-bed2-1a8302fed758/dd6rqs1-a07102b2-e0a6-4bb6-bbe7-b19ebac8c29d.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2UyYmQzNDdiLTE3N2YtNDRjYy1iZWQyLTFhODMwMmZlZDc1OFwvZGQ2cnFzMS1hMDcxMDJiMi1lMGE2LTRiYjYtYmJlNy1iMTllYmFjOGMyOWQucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.vKAC3lVX5J1zHri_BLvOkeWstC4VSKBScWKegZn3Gq4';
            images[3] = 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e2bd347b-177f-44cc-bed2-1a8302fed758/dexee66-eeea1f07-36bc-437e-b9fe-b1333df33ee2.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2UyYmQzNDdiLTE3N2YtNDRjYy1iZWQyLTFhODMwMmZlZDc1OFwvZGV4ZWU2Ni1lZWVhMWYwNy0zNmJjLTQzN2UtYjlmZS1iMTMzM2RmMzNlZTIucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.chL1tYHfs5zrqy8-iXJxikkG_710ew0O0ac3jtZVtWo';
            images[4] = 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e2bd347b-177f-44cc-bed2-1a8302fed758/df3sotl-831747a0-d00e-4730-82ed-9c47644a4281.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2UyYmQzNDdiLTE3N2YtNDRjYy1iZWQyLTFhODMwMmZlZDc1OFwvZGYzc290bC04MzE3NDdhMC1kMDBlLTQ3MzAtODJlZC05YzQ3NjQ0YTQyODEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.C5DDg_LMNkAfrjoyeOZbhh9SobcCGlbeyAEFJp7f2wA';
            images[5] = 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e2bd347b-177f-44cc-bed2-1a8302fed758/ddhqrki-5cb60edb-48e7-475a-afe7-5095af3bbab9.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2UyYmQzNDdiLTE3N2YtNDRjYy1iZWQyLTFhODMwMmZlZDc1OFwvZGRocXJraS01Y2I2MGVkYi00OGU3LTQ3NWEtYWZlNy01MDk1YWYzYmJhYjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.PbE8HHcNwDoK8iL3E0QfyYwcmmL1vNKCIKnFLORzI1c';

            function changePicture() {
                document.body.style.backgroundImage = "url(" + images[i] + ")";

                if (i < images.length - 1) {
                    i++;
                } else {
                    i = 0;
                }
                setTimeout(changePicture, slideTime);
            }

            window.onload = changePicture;