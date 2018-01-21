Repository.define do
    repositories provider: :github, namespace: 'ZildithNetwork' do
        repository :data do
            klass           Repository::Data
            repo            'OCN-Data'
            branch          'master'
            services        [:data]
        end

        visible? true do
            repository :plugins do
                title           "Plugins"
                description     "Our custom Bukkit plugins (such as PGM) that control matches and add network features to Minecraft"
                repo            "ProjectAres"
                open?           true
            end

            repository :ocn do
                title           "Website"
                description     "The website you're on right now"
                repo            "OCN"
                open?           true
            end

            repository :rotations do
                title           "Rotations"
                description     "The maps that cycle through on our public servers"
                repo            "Rotations"
                open?           true
            end

            repository :protocolsupport do
                title           "Protocols"
                description     "Repository that handles backwards compatiability"
                repo            "ProtocolSupport"
                open?           true
            end

            repository :ocndata do
                title           "Configurations"
                description     "Resource that handles servers, groups, and achievements"
                repo            "OCN-Data"
                open?           true
            end

            repository :sportbukkit do
                title           "SportBukkit"
                description     "Our open source fork of Bukkit that is finely tuned for competitive Minecraft"
                repo            "SportBukkit"
                open?           true
            end

        end
    end
end
