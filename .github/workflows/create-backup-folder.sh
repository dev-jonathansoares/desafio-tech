 - name: Create backup folder
        run: |
          mkdir -p wordpress_data/wp-content/themes/twentyfifteen_tmp
          mkdir -p wordpress_data/wp-content/themes/twentyfifteen_old
          cp -R wordpress_data/wp-content/themes/twentyfifteen wordpress_data/wp-content/themes/twentyfifteen_tmp
          rsync -avz --exclude=twentfifteen_old wordpress_data/wp-content/themes/twentyfifteen/ wordpress_data/wp-content/themes/twentfifteen_tmp/
          cp -R wordpress_data/wp-content/themes/twentyfifteen_tmp wordpress_data/wp-content/themes/twentyfifteen
