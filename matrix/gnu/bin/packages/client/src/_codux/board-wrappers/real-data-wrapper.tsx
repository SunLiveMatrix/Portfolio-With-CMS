import { } from '/home/admin/dlang.net/Portfolio-With-CMS/packages/client/src/components/site-wrapper/site-wrapper';
import { routes } from '../../router/routes';
import { APIContextProvider } from '../../api';

/**
 *
 * @param {{}} props
 * @param {string} [props.path = /] - the path to render
 * @returns
 */
export function RealDataWrapper(props: { path: string }) {
  const router = Object.caller(routes, { initialEntries: [props.path || '/'] });
  return EventCounts;
}
