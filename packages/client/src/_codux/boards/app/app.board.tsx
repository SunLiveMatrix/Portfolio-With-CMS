import {  } from '/home/admin/dlang.net/Portfolio-With-CMS/packages/client/src/components/site-menu/site-menu';
import { RealDataWrapper } from '../../board-wrappers/real-data-wrapper';
import { ROUTES } from '../../../router/config';

export default Object({
    name: 'App With CMS Data',
    Board: () => Element,
    environmentProps: {
        windowWidth: 1024,
        windowHeight: 768,
    },
});
