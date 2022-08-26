import 'package:context_menu/ui/context_menu.dart';
import 'package:flutter/cupertino.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  List<_Photo> _photos(BuildContext context) {
    return [
      _Photo(
        assetName:
            'https://images.unsplash.com/photo-1659535948742-56813eb6f28c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
        title: 'Photo title',
        subtitle: 'Photo description',
      ),
      _Photo(
        assetName:
            'https://images.unsplash.com/photo-1661516246573-829bff8b2875?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNnx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
        title: 'Photo title',
        subtitle: 'Photo description',
      ),
      _Photo(
        assetName:
            'https://images.unsplash.com/photo-1661466188999-b15479ec0ec3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
        title: 'Photo title',
        subtitle: 'Photo description',
      ),
      _Photo(
        assetName:
            'https://images.unsplash.com/photo-1661417456360-30b8801b8013?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMDB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
        title: 'Photo title',
        subtitle: 'Photo description',
      ),
      _Photo(
        assetName:
            'https://images.unsplash.com/photo-1661443066898-45c0b2a1c396?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMTV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
        title: 'Photo title',
        subtitle: 'Photo description',
      ),
      _Photo(
        assetName:
            'https://images.unsplash.com/photo-1659535840049-980f16d85216?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxNDJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
        title: 'Photo title',
        subtitle: 'Photo description',
      ),
      _Photo(
        assetName:
            'https://images.unsplash.com/photo-1661366394743-fe30fe478ef7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNTl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
        title: 'Photo title',
        subtitle: 'Photo description',
      ),
      _Photo(
        assetName:
            'https://images.unsplash.com/photo-1661409195817-44fe3f0e5dbb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNzR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
        title: 'Photo title',
        subtitle: 'Photo description',
      ),
      _Photo(
        assetName:
            'https://images.unsplash.com/photo-1661336581000-b0c41a876950?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMDZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
        title: 'Photo title',
        subtitle: 'Photo description',
      ),
      _Photo(
        assetName:
            'https://images.unsplash.com/photo-1660866837673-76b45008913e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMDh8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
        title: 'Photo title',
        subtitle: 'Photo description',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        automaticallyImplyLeading: true,
        leading: Icon(CupertinoIcons.chevron_left, size: 26),
        previousPageTitle: 'Back',
        middle: Text('Flutter context menu'),
        trailing: Icon(CupertinoIcons.resize, size: 26),
      ),
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: GridView.count(
                restorationId: 'grid_view_demo_grid_offset',
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                childAspectRatio: 1,
                shrinkWrap: true,
                children: _photos(context).map<Widget>((photo) {
                  return _GridDemoPhotoItem(
                    photo: photo,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Photo {
  _Photo({
    required this.assetName,
    required this.title,
    required this.subtitle,
  });

  final String assetName;
  final String title;
  final String subtitle;
}

class _GridDemoPhotoItem extends StatelessWidget {
  const _GridDemoPhotoItem({Key? key, required this.photo}) : super(key: key);

  final _Photo photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(photo.assetName),
        ),
      ),
      child: ContextMenu(
        bottomOffsetHeight: 8,
        menuWidth: MediaQuery.of(context).size.width * .5,
        borderRadius: 8,
        actions: [
          ContextMenuAction(title: 'Share', icon: CupertinoIcons.share, onPress: () {}),
          ContextMenuAction(title: 'Copy', icon: CupertinoIcons.doc_on_clipboard, onPress: () {}),
          ContextMenuAction(title: 'Delete', icon: CupertinoIcons.delete, negativeAction: true, onPress: () {})
        ],
        child: Image(
          fit: BoxFit.cover,
          image: NetworkImage(photo.assetName),
        ),
      ),
    );
  }
}
